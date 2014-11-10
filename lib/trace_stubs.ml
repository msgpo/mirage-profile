(* Copyright (C) 2014, Thomas Leonard *)

(** This is the [Trace] module when we're compiled without tracing support. *)

type hiatus_reason =
  | Wait_for_work
  | Suspend
  | Hibernate

let note_hiatus _reason = ()
let note_resume () = ()

let label _label = ()
let named_wait _label = Lwt.wait ()
let named_task _label = Lwt.task ()
let named_condition _label = Lwt_condition.create ()

let note_increase _counter _amount = ()
