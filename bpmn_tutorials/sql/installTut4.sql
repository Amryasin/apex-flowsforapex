declare
  l_dgrm_content clob;
begin
  l_dgrm_content := apex_string.join_clob(
    apex_t_varchar2(
      q'[<?xml version='1.0' encoding='UTF-8'?>]'
      ,q'[<bpmn:definitions xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:bpmn='http://www.omg.org/spec/BPMN/20100524/MODEL' xmlns:bpmndi='http://www.omg.org/spec/BPMN/20100524/DI' xmlns:dc='http://www.omg.org/spec/DD/20100524/DC' xmlns:di='http://www.omg.org/spec/DD/20100524/DI' xmlns:apex='http://www.apex.mt-ag.com' id='Definitions_1wzb475' targetNamespace='http://bpmn.io/schema/bpmn' exporter='bpmn-js (https://demo.bpmn.io)' exporterVersion='7.2.0'>]'
      ,q'[  <bpmn:process id='Tutorial4' name='Task Types Tutorial' isExecutable='false'>]'
      ,q'[    <bpmn:documentation>Tutorials by Richard Allen.]'
      ,q'[Flowquest Consulting.]'
      ,q'[twitter: @FlowquestR</bpmn:documentation>]'
      ,q'[    <bpmn:startEvent id='Event_0etkrt2'>]'
      ,q'[      <bpmn:outgoing>Flow_1nctu2s</bpmn:outgoing>]'
      ,q'[    </bpmn:startEvent>]'
      ,q'[    <bpmn:task id='Activity_0byebb7' name='This is a standard Task'>]'
      ,q'[      <bpmn:incoming>Flow_1nctu2s</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_0pijurl</bpmn:outgoing>]'
      ,q'[    </bpmn:task>]'
      ,q'[    <bpmn:sequenceFlow id='Flow_1nctu2s' sourceRef='Event_0etkrt2' targetRef='Activity_0byebb7' />]'
      ,q'[    <bpmn:sequenceFlow id='Flow_0pijurl' sourceRef='Activity_0byebb7' targetRef='Activity_0srf4in' />]'
      ,q'[    <bpmn:userTask id='Activity_0srf4in' name='This is a UserTask - I can call an APEX Page'>]'
      ,q'[      <bpmn:incoming>Flow_0pijurl</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_199lc3i</bpmn:outgoing>]'
      ,q'[    </bpmn:userTask>]'
      ,q'[    <bpmn:sequenceFlow id='Flow_199lc3i' sourceRef='Activity_0srf4in' targetRef='Activity_0w0fi2i' />]'
      ,q'[    <bpmn:scriptTask id='Activity_0w0fi2i' name='This is a scriptTask&#10;- I can run a&#10;PL/SQL script'>]'
      ,q'[      <bpmn:incoming>Flow_199lc3i</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_05hp9u3</bpmn:outgoing>]'
      ,q'[      <apex:plsqlCode>null;</apex:plsqlCode>]'
      ,q'[    </bpmn:scriptTask>]'
      ,q'[    <bpmn:sequenceFlow id='Flow_05hp9u3' sourceRef='Activity_0w0fi2i' targetRef='Activity_1sk9zqj' />]'
      ,q'[    <bpmn:serviceTask id='Activity_1sk9zqj' name='This is a&#10;Service Task&#10;- Use me to&#10;send an email'>]'
      ,q'[      <bpmn:incoming>Flow_05hp9u3</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_0kd3kyt</bpmn:outgoing>]'
      ,q'[      <apex:plsqlCode>null;</apex:plsqlCode>]'
      ,q'[    </bpmn:serviceTask>]'
      ,q'[    <bpmn:sequenceFlow id='Flow_0kd3kyt' sourceRef='Activity_1sk9zqj' targetRef='Activity_0t8licd' />]'
      ,q'[    <bpmn:manualTask id='Activity_0t8licd' name='This is a Manual Task'>]'
      ,q'[      <bpmn:incoming>Flow_0kd3kyt</bpmn:incoming>]'
      ,q'[      <bpmn:outgoing>Flow_07uwsw9</bpmn:outgoing>]'
      ,q'[    </bpmn:manualTask>]'
      ,q'[    <bpmn:endEvent id='Event_1da6vg3'>]'
      ,q'[      <bpmn:incoming>Flow_07uwsw9</bpmn:incoming>]'
      ,q'[    </bpmn:endEvent>]'
      ,q'[    <bpmn:sequenceFlow id='Flow_07uwsw9' sourceRef='Activity_0t8licd' targetRef='Event_1da6vg3' />]'
      ,q'[    <bpmn:textAnnotation id='TextAnnotation_0xw8y26'>]'
      ,q'[      <bpmn:text>Tutorial AA4 - Tasks - Getting your Work Done!]'
      ,q'[]'
      ,q'[So much for steering your process through gateways, etc.  How do we actually get things done?]'
      ,q'[]'
      ,q'[Flows for APEX  can now direct steps in your process.  This step introduces the task types, and how to configure them.]'
      ,q'[]'
      ,q'[This tutorial is one to look at in Flow Management / Flow Modeler, but not run in your system.</bpmn:text>]'
      ,q'[    </bpmn:textAnnotation>]'
      ,q'[    <bpmn:association id='Association_00jab7b' sourceRef='Event_0etkrt2' targetRef='TextAnnotation_0xw8y26' />]'
      ,q'[    <bpmn:textAnnotation id='TextAnnotation_1vygfet'>]'
      ,q'[      <bpmn:text>A User Task can call an APEX page, pass variables into the page, etc -- just like an APEX menu does.]'
      ,q'[]'
      ,q'[Open the APEX tab in the Properties Panel (on the right) and you can see how you specify the application and page to call, provide instructions on what action to perform, what to do with the cache, and list items to set and values to use.</bpmn:text>]'
      ,q'[    </bpmn:textAnnotation>]'
      ,q'[    <bpmn:association id='Association_1r0p5lj' sourceRef='Activity_0srf4in' targetRef='TextAnnotation_1vygfet' />]'
      ,q'[    <bpmn:textAnnotation id='TextAnnotation_1egb903'>]'
      ,q'[      <bpmn:text>Service Tasks call various services, such as messaging, email, etc.  ]'
      ,q'[]'
      ,q'[In v5/v21.1, we use these for sending Email using the APEX Mail Template features.  Other services could be added here in future releases.]'
      ,q'[]'
      ,q'[In in v5 and v21.1, a serviceTask works in the same way as  ScriptTasks - by calling a PL/SQL procedure that you provide.</bpmn:text>]'
      ,q'[    </bpmn:textAnnotation>]'
      ,q'[    <bpmn:association id='Association_061ntp9' sourceRef='Activity_1sk9zqj' targetRef='TextAnnotation_1egb903' />]'
      ,q'[    <bpmn:textAnnotation id='TextAnnotation_1rkmr7t'>]'
      ,q'[      <bpmn:text>Manual Tasks are used to model non-computer steps in your process.]'
      ,q'[]'
      ,q'[In V5 and v21.1, they behave like a standard Task.</bpmn:text>]'
      ,q'[    </bpmn:textAnnotation>]'
      ,q'[    <bpmn:association id='Association_1crb5iq' sourceRef='Activity_0t8licd' targetRef='TextAnnotation_1rkmr7t' />]'
      ,q'[    <bpmn:textAnnotation id='TextAnnotation_02mhmae'>]'
      ,q'[      <bpmn:text>A Script Task can run a piece of PL/SQL that you supply in the model.]'
      ,q'[]'
      ,q'[]'
      ,q'[You can use a script task to set process variables, execute a script, Lots of useful things.]'
      ,q'[]'
      ,q'[]'
      ,q'[As the modeller is not a great editor, we usually write our PL/SQL as packages that are stored in the database, and just call the procedure from the diagram.]'
      ,q'[]'
      ,q'[]'
      ,q'[Optionally you can bind your APEX page items into your scripts. Just be careful whether your script is going run when a page / session exists, or whether it could fire after a timer fires, for example, when you might not have page state.  If you might execute the script outside of an APEX script, move any process state / variables from APEX items into Process Variables in earlier steps.</bpmn:text>]'
      ,q'[    </bpmn:textAnnotation>]'
      ,q'[    <bpmn:association id='Association_1w56n8r' sourceRef='Activity_0w0fi2i' targetRef='TextAnnotation_02mhmae' />]'
      ,q'[  </bpmn:process>]'
      ,q'[  <bpmndi:BPMNDiagram id='BPMNDiagram_1'>]'
      ,q'[    <bpmndi:BPMNPlane id='BPMNPlane_1' bpmnElement='Tutorial4'>]'
      ,q'[      <bpmndi:BPMNEdge id='Flow_07uwsw9_di' bpmnElement='Flow_07uwsw9'>]'
      ,q'[        <di:waypoint x='1090' y='380' />]'
      ,q'[        <di:waypoint x='1152' y='380' />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id='Flow_0kd3kyt_di' bpmnElement='Flow_0kd3kyt'>]'
      ,q'[        <di:waypoint x='930' y='380' />]'
      ,q'[        <di:waypoint x='990' y='380' />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id='Flow_05hp9u3_di' bpmnElement='Flow_05hp9u3'>]'
      ,q'[        <di:waypoint x='770' y='380' />]'
      ,q'[        <di:waypoint x='830' y='380' />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id='Flow_199lc3i_di' bpmnElement='Flow_199lc3i'>]'
      ,q'[        <di:waypoint x='610' y='380' />]'
      ,q'[        <di:waypoint x='670' y='380' />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id='Flow_0pijurl_di' bpmnElement='Flow_0pijurl'>]'
      ,q'[        <di:waypoint x='450' y='380' />]'
      ,q'[        <di:waypoint x='510' y='380' />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id='Flow_1nctu2s_di' bpmnElement='Flow_1nctu2s'>]'
      ,q'[        <di:waypoint x='298' y='380' />]'
      ,q'[        <di:waypoint x='350' y='380' />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNShape id='Event_0etkrt2_di' bpmnElement='Event_0etkrt2'>]'
      ,q'[        <dc:Bounds x='262' y='362' width='36' height='36' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id='Activity_0byebb7_di' bpmnElement='Activity_0byebb7'>]'
      ,q'[        <dc:Bounds x='350' y='340' width='100' height='80' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id='Activity_0ok42am_di' bpmnElement='Activity_0srf4in'>]'
      ,q'[        <dc:Bounds x='510' y='340' width='100' height='80' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id='Activity_1e92hqx_di' bpmnElement='Activity_0w0fi2i'>]'
      ,q'[        <dc:Bounds x='670' y='340' width='100' height='80' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id='Activity_0yapt8d_di' bpmnElement='Activity_1sk9zqj'>]'
      ,q'[        <dc:Bounds x='830' y='340' width='100' height='80' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id='Activity_1apqobn_di' bpmnElement='Activity_0t8licd'>]'
      ,q'[        <dc:Bounds x='990' y='340' width='100' height='80' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id='Event_1da6vg3_di' bpmnElement='Event_1da6vg3'>]'
      ,q'[        <dc:Bounds x='1152' y='362' width='36' height='36' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id='TextAnnotation_0xw8y26_di' bpmnElement='TextAnnotation_0xw8y26'>]'
      ,q'[        <dc:Bounds x='410' y='40' width='620' height='123.9930648803711' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id='TextAnnotation_1vygfet_di' bpmnElement='TextAnnotation_1vygfet'>]'
      ,q'[        <dc:Bounds x='560' y='178' width='370' height='120' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id='TextAnnotation_1egb903_di' bpmnElement='TextAnnotation_1egb903'>]'
      ,q'[        <dc:Bounds x='950' y='490' width='390.0000305175781' height='117.98611450195312' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id='TextAnnotation_1rkmr7t_di' bpmnElement='TextAnnotation_1rkmr7t'>]'
      ,q'[        <dc:Bounds x='1080' y='190' width='200.00001525878906' height='95.00000762939453' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNShape id='TextAnnotation_02mhmae_di' bpmnElement='TextAnnotation_02mhmae'>]'
      ,q'[        <dc:Bounds x='450' y='490' width='430.0000305175781' height='251.9965362548828' />]'
      ,q'[      </bpmndi:BPMNShape>]'
      ,q'[      <bpmndi:BPMNEdge id='Association_00jab7b_di' bpmnElement='Association_00jab7b'>]'
      ,q'[        <di:waypoint x='287' y='364' />]'
      ,q'[        <di:waypoint x='401' y='102' />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id='Association_1r0p5lj_di' bpmnElement='Association_1r0p5lj'>]'
      ,q'[        <di:waypoint x='573' y='340' />]'
      ,q'[        <di:waypoint x='585' y='298' />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id='Association_061ntp9_di' bpmnElement='Association_061ntp9'>]'
      ,q'[        <di:waypoint x='918' y='420' />]'
      ,q'[        <di:waypoint x='986' y='490' />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id='Association_1crb5iq_di' bpmnElement='Association_1crb5iq'>]'
      ,q'[        <di:waypoint x='1061' y='340' />]'
      ,q'[        <di:waypoint x='1089' y='285' />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[      <bpmndi:BPMNEdge id='Association_1w56n8r_di' bpmnElement='Association_1w56n8r'>]'
      ,q'[        <di:waypoint x='670' y='405' />]'
      ,q'[        <di:waypoint x='665' y='407' />]'
      ,q'[      </bpmndi:BPMNEdge>]'
      ,q'[    </bpmndi:BPMNPlane>]'
      ,q'[  </bpmndi:BPMNDiagram>]'
      ,q'[</bpmn:definitions>]'
      ,q'[]'
  ));
  flow_bpmn_parser_pkg.upload_and_parse(
    pi_dgrm_name => 'AA4 - Tutorial - Tasks Get Your Work Done!',
    pi_dgrm_version => '21.1',
    pi_dgrm_category => 'Tutorials',
    pi_dgrm_content => l_dgrm_content
);
end;
/
