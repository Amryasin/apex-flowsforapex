prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>2400405578329584
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'FLOWS4APEX'
);
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(12495499263265880052)
,p_name=>'Flows for APEX Modeler'
,p_alias=>'MODELER'
,p_step_title=>'Flows for APEX Modeler'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'F4A'
,p_last_upd_yyyymmddhh24miss=>'20201115165220'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15681684881738607)
,p_plug_name=>'Modeler'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(12495582446800880234)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'FLOW_DIAGRAMS'
,p_query_where=>'dgrm_id = :p4_dgrm_id'
,p_include_rowid_column=>false
,p_plug_source_type=>'PLUGIN_COM.MTAG.APEX.BPMNMODELER.REGION'
,p_ajax_items_to_submit=>'P4_DGRM_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'DGRM_CONTENT'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'DGRM_ID'
,p_attribute_05=>'DGRM_NAME'
,p_attribute_06=>'P4_DGRM_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15684416507738635)
,p_plug_name=>'Enter Diagram Name'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(12495608896288880263)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24418438259878743)
,p_plug_name=>'Diagram XML'
,p_region_name=>'diagram_xml_region'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(12495608896288880263)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15684938795738640)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15684416507738635)
,p_button_name=>'SAVE_AS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(12495521691135880126)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15682736402738618)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15681684881738607)
,p_button_name=>'NEW_DIAGRAM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12495522463331880131)
,p_button_image_alt=>'New Diagram'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-new'
,p_button_cattributes=>'title="New Diagram"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15683180743738622)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15681684881738607)
,p_button_name=>'OPEN_DIAGRAM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12495522463331880131)
,p_button_image_alt=>'Open Diagram'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-folder-open-o'
,p_button_cattributes=>'title="Open Diagram"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15683484308738625)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(15681684881738607)
,p_button_name=>'SAVE_DIAGRAM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12495522463331880131)
,p_button_image_alt=>'Save Diagram'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15683582554738626)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(15681684881738607)
,p_button_name=>'SAVE_DIAGRAM_AS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12495522463331880131)
,p_button_image_alt=>'Save Diagram'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save-as'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15685388216738644)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(15681684881738607)
,p_button_name=>'DELETE_DIAGRAM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12495522463331880131)
,p_button_image_alt=>'Delete Diagram'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-trash-o'
,p_button_cattributes=>'title="Delete Diagram"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24418161449878740)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(15681684881738607)
,p_button_name=>'DOWNLOAD_DIAGRAM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12495522463331880131)
,p_button_image_alt=>'Download Diagram'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-cloud-download'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15681777930738608)
,p_name=>'P4_DGRM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15681684881738607)
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15684515942738636)
,p_name=>'P4_DGRM_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15684416507738635)
,p_prompt=>'Diagram Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(12495522847445880132)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24418616934878745)
,p_name=>'P4_DIAGRAM_XML'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24418438259878743)
,p_prompt=>'Diagram Xml'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cHeight=>20
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(12495523145758880138)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15682176950738612)
,p_name=>'New Diagram selected'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_DGRM_ID'
,p_condition_element=>'P4_DGRM_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15682279773738613)
,p_event_id=>wwv_flow_api.id(15682176950738612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15681684881738607)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15685749364738648)
,p_event_id=>wwv_flow_api.id(15682176950738612)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(15685388216738644)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15684138176738632)
,p_event_id=>wwv_flow_api.id(15682176950738612)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(15683484308738625)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15684306033738634)
,p_event_id=>wwv_flow_api.id(15682176950738612)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(15683484308738625)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15684068123738631)
,p_event_id=>wwv_flow_api.id(15682176950738612)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15681684881738607)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15685641922738647)
,p_event_id=>wwv_flow_api.id(15682176950738612)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(15685388216738644)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15682861064738619)
,p_name=>'New Diagram clicked'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15682736402738618)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15682902508738620)
,p_event_id=>wwv_flow_api.id(15682861064738619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_DGRM_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15683695432738627)
,p_name=>'Save Diagram Clicked'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15683484308738625)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15683741906738628)
,p_event_id=>wwv_flow_api.id(15683695432738627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15681684881738607)
,p_attribute_01=>'apex.region( this.affectedElements[0].id ).update();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15684621801738637)
,p_name=>'Save Diagram As Clicked'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15683582554738626)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15684762576738638)
,p_event_id=>wwv_flow_api.id(15684621801738637)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15684416507738635)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15685008111738641)
,p_name=>'Save As Clicked'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15684938795738640)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15685295249738643)
,p_event_id=>wwv_flow_api.id(15685008111738641)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15684416507738635)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15685135868738642)
,p_event_id=>wwv_flow_api.id(15685008111738641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15681684881738607)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var myRegion = apex.region( this.affectedElements[0].id );',
'myRegion.setDiagramName( apex.item( "P4_DGRM_NAME" ).getValue() );',
'myRegion.insert();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15685447370738645)
,p_name=>'Delete Diagram Clicked'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15685388216738644)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15685522005738646)
,p_event_id=>wwv_flow_api.id(15685447370738645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15681684881738607)
,p_attribute_01=>'apex.region( this.affectedElements[0].id ).delete();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24414578864878704)
,p_name=>'Open Diagram Dialog Closed'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15683180743738622)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24414603146878705)
,p_event_id=>wwv_flow_api.id(24414578864878704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_DGRM_ID'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P3_DGRM_ID'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24418254991878741)
,p_name=>'Download Diagram Clicked'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24418161449878740)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24418325644878742)
,p_event_id=>wwv_flow_api.id(24418254991878741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15681684881738607)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var myResult = apex.region( this.affectedElements[0].id ).getDiagram();',
'myResult.then( xml => {',
'  apex.item( "P4_DIAGRAM_XML" ).setValue( xml );',
'  apex.theme.openRegion( "diagram_xml_region" );',
'  //console.log( "xml", xml );',
'});'))
);
wwv_flow_api.component_end;
end;
/