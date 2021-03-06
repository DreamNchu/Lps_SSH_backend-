package com.lps.action.operation.user;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.lps.action.jsonresult.DataResult;
import com.lps.control.manage.BasicManage;
import com.lps.control.manage.OrderManage;
import com.lps.model.ServerOrder;
import com.lps.service.impl.FindByIdGetNullException;
import com.lps.web.orderchart.dto.OrderChartDto;
import com.lps.web.orderchart.dto.OrderChartRequestDto;
import com.lps.web.orderchart.dto.Population;
import com.lps.action.basic.ActionSupportLps;

public class UserOrdersCountAction extends ActionSupportLps 
		implements DataResult, SessionAware{
	
	private static final long serialVersionUID = -7904719214614886119L;
	
	private Map<String,Object> session ;

	public String getResult() {
		return result.toString();
	}

	private OrderManage orderManage;
	
	private OrderChartDto orderChartDto;
	
	public OrderChartDto getOrderChartDto() {
		return orderChartDto;
	}

	public void setOrderChartDto(OrderChartDto orderChartDto) {
		this.orderChartDto = orderChartDto;
	}

	/**
	 * 员工个人分析图表页面
	 * @return
	 */
	public String chartAnalyzePage(){
		return SUCCESS;
	}
	
	private OrderChartRequestDto orderChartRequestDto;
	
	public OrderChartRequestDto getOrderChartRequestDto() {
		return orderChartRequestDto;
	}

	public void setOrderChartRequestDto(OrderChartRequestDto orderChartRequestDto) {
		this.orderChartRequestDto = orderChartRequestDto;
	}

	/**
	 * 员工图表数据
	 * @return
	 */
	public String chartDataOrders(){
		basicMsg.setMsgDto(orderChartDto);
		//权限限制
		orderChartRequestDto.setPopulation(Population.ONE);
		int id = Integer.parseInt(session.get("id")+"");
		orderChartRequestDto.setStuffId(id);
		
		try {
			orderManage.chartAnalyze(orderChartDto, orderChartRequestDto);
		} catch (FindByIdGetNullException e) {
			e.printStackTrace();
			orderChartDto.setErrorMsg(e.getMessage() + "\n" + "数据获取失败");
		}
		orderChartDto.setDefaultSuccessMsg();
//		result = WorkJson.toJsonDisableHtmlEscaping(orderChartDto);
//System.out.println(result);
		return SUCCESS;	
		
	}

	public BasicManage<ServerOrder> getOrderManage() {
		return orderManage;
	}

	public void setOrderManage(OrderManage orderManage) {
		this.orderManage = orderManage;
	}
	
	@Override
	public String execute() throws Exception {
		return super.execute();
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}
	
}
