package tw.group4._03_.csr.reservation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import tw.group4._03_.cms.reservation.model.ShopReservationBean;
import tw.group4._03_.cms.reservation.model.ShopReservationService;
import tw.group4.util.IdentityFilter;

@Controller
public class DeleteReservationF2 {

	@Autowired
	private ShopReservationService srs;

	@RequestMapping(path = "/03/csr/reservation/deleteReservationByNo.ctrl", method = RequestMethod.POST)
	public String deleteReservationByNo(@RequestParam(name = "reservationNo") String reservationNo, Model m) {

		try {
			int no = Integer.parseInt(reservationNo);
			List<ShopReservationBean> reservationList = srs.selectByNo(no);

			if (reservationList.size() != 0) {
				m.addAttribute("reservationList", reservationList);
			} else {
				String reservationSerachMsg = "查無此預約資料，請重新查詢";
				System.out.println(reservationSerachMsg);
				m.addAttribute("reservationSerachMsg", reservationSerachMsg);
			}
		} catch (Exception e) {
			e.printStackTrace();

			String reservationSerachMsg = "搜尋出錯，請重新查詢";
			m.addAttribute("reservationSerachMsg", reservationSerachMsg); // 回傳錯誤訊息
		}
		return IdentityFilter.loginID+"03/csr_reservation/delete_confirm";
	}
	
	@RequestMapping(path = "/03/csr/reservation/deleteReservation.ctrl", method = RequestMethod.POST)
	public String deleteReservation(@RequestParam(name = "reservationNo") String reservationNo, Model m) {
		
		try {
			int no = Integer.parseInt(reservationNo);
			srs.delete(no);
			
			String reservationDeleteMsg = "預約刪除成功";
			m.addAttribute("reservationDeleteMsg", reservationDeleteMsg);
			
		} catch (Exception e) {
			e.printStackTrace();
			String reservationDeleteMsg = "預約刪除失敗";
			m.addAttribute("reservationDeleteMsg", reservationDeleteMsg); // 回傳錯誤訊息
		}
		return IdentityFilter.loginID+"03/csr_reservation/delete_return";
	}

}
