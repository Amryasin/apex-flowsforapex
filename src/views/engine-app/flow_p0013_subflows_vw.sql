create or replace view flow_p0013_subflows_vw
as
  select sbfl.sbfl_id
       , sbfl.sbfl_prcs_id
       , sbfl.sbfl_process_level
       , sbfl.sbfl_last_completed
       , sbfl.sbfl_current
       , sbfl.sbfl_status
       , sbfl.sbfl_became_current
       , sbfl.sbfl_work_started
       , sbfl.sbfl_reservation
       , sbfl.sbfl_last_update
    from flow_subflows sbfl
with read only;
