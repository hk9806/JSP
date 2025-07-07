package mvc.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import mvc.database.DBConnection;

public class memberDAO {
	private static memberDAO instance;

	public memberDAO() {
	}

	public static memberDAO getInstance() {
		if (instance == null)
			instance = new memberDAO();
		return instance;
	}

	// member 로그인
	public String loginmember(memberDTO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String id = null;
		String sql = "select * from testmember where id=? and password=?";

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());

			rs = pstmt.executeQuery();

			if (rs.next())
				id = rs.getString("id");

			return id;
		} catch (Exception ex) {
			System.out.println("Loginmember:" + ex);
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}
		}
		return id;
	}

	// 회원가입
	public void addmember(memberDTO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.getConnection();

			String sql = "insert into testmember values(?, ?, ?, ?, ?, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getGender());
			pstmt.setString(5, member.getBirth());
			pstmt.setString(6, member.getMail());
			pstmt.setString(7, member.getPhone());
			pstmt.setString(8, member.getAddress());
			pstmt.setString(9, member.getRegist_day());

			pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("insertBoard(): " + ex);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}
		}
	}

	//  회원 수정
	public void updatemember(memberDTO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			String sql = "update testmember set password=?, name=?, birth=?, mail=?, phone=?, address=? where id=?";

			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);

			conn.setAutoCommit(false);
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getBirth());
			pstmt.setString(4, member.getMail());
			pstmt.setString(5, member.getPhone());
			pstmt.setString(6, member.getAddress());
			pstmt.setString(7, member.getId());

			pstmt.executeUpdate();
			conn.commit();
		} catch (Exception ex) {
			if(conn!=null)
			System.out.println("updatemember(): " + ex);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}
		}
	}

	// 회원탈퇴
	// 선택된 회원 삭제 (삭제된 행 수 반환)
	public int deletemember(String id) {
	    Connection conn = null;
	    PreparedStatement pstmt = null;
	    int result = 0;

	    String sql = "delete from testmember where id=?";

	    try {
	        conn = DBConnection.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, id);
	        result = pstmt.executeUpdate();  // 삭제된 행 수 반환
	    } catch (Exception ex) {
	        System.out.println("deletemember(): " + ex);
	    } finally {
	        try {
	            if (pstmt != null)
	                pstmt.close();
	            if (conn != null)
	                conn.close();
	        } catch (Exception ex) {
	            throw new RuntimeException(ex.getMessage());
	        }
	    }
	    return result;
	}
}