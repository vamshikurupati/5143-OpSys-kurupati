# Chapter 3 Review Questions

Name: Vamshi Krishna Kurupati

Course: 5143 Operating Systems

Date: 02 Mar 2016

## 3.4.What does it mean to preempt a process?

Preemption means the operating system moves a process from running to ready without the process requesting it.
It is the act of temporarily interrupting a task being carried out by a computer system, 
without requiring its cooperation, and with the intention of resuming the task at a later time.
Such a change is known as a context switch. It is normally carried out by a privileged task or 
part of the system known as a preemptive scheduler, which has the power to preempt, or interrupt,
and later resume, other tasks in the system.

## 3.5.What is swapping and what is its purpose?
To maximize the number of processes in the system, we swap a process from the ready state to the ready suspend state.
Swapping is a simple memory/process management technique used by the operating system to increase the utilization
of the processor by moving some blocked process from the main memory to the secondary memory thus forming a
queue of temporarily suspended process and the execution continues with the newly arrived process.

## 3.9.List three general categories of information in a process control block?
The Process Control Block stores many different items of data, all needed for correct and 
efficient process management. Though the details of these structures are obviously system-dependent, we can identify 
some very common parts, and classify them in three main categories:

**Process identification data**

**Processor state data**

**Process control data**

## 3.10.Why are two modes (user and kernel) needed?
**Kernel Mode**

In Kernel mode, the executing code has complete and unrestricted access to the underlying hardware. It can execute any
CPU instruction and reference any memory address. Kernel mode is generally reserved for the lowest-level, most trusted 
functions of the operating system. Crashes in kernel mode are catastrophic; they will halt the entire PC.

**User Mode**

In User mode, the executing code has no ability to directly access hardware or reference memory. Code running in user
mode must delegate to system APIs to access hardware or memory. Due to the protection afforded by this sort of isolation,
crashes in user mode are always recoverable. Most of the code running on your computer will execute in user mode.

## 3.12 What is the difference between an interrupt and a trap?
Traps and interrupts are events that break down the normal execution of the program.

**Trap:** 

Traps are software-invoked interrupts.
A trap is and abnormal condition detected by the CPU, which indicates an unknown I/O device is accessed, etc.
A trap will occur at exactly the same point of the program execution, each time a program runs.

**Interrupt:**

Interrupts are hardware interrupts.
An interrupt in an interruption in the normal execution of the program. When the CPU is interrupt, 
then it stops its current activities like execution of the program.
An interrupt is dependent on the relative timing between the interrupting device and the CPU.
It is signal sent to the CPU by an external hardware device such as I/O device.

## 3.13 Give three examples of an interrupt?
Generally there are three types of Interrupts those are occurred For Example

**Internal Interrupt.**

**Software Interrupt.**

**External Interrupt.**


**Internal Interrupts** are those which are occurred due to Some Problem in the Execution 

For Example When a user performing any Operation which contains any Error and which contains any type of Error. 
So that Internal Interrupts are those which are occurred by the Some Operations or by Some Instructions and the Operations
those are not Possible but a user is trying for that Operation. And The Software Interrupts are those which are made
some call to the System for Example while we are Processing Some Instructions and when we wants to Execute one more 
Application Programs.


**Software interrupt** is caused either by an exceptional condition in the processor itself, or a special instruction in the 
instruction set which causes an interrupt when it is executed. The former is often called a trap or exception and is used
for errors or events occurring during program execution that are exceptional enough that they cannot be handled within the program
itself.

For example, if the processor's arithmetic logic unit is commanded to divide a number by zero, this impossible
demand will cause a divide-by-zero exception, perhaps causing the computer to abandon the calculation or display an error message.
Software interrupt instructions function similarly to subroutine calls and are used for a variety of purposes, such as 
to request services from low-level system software such as device drivers. For example, computers often use software
interrupt instructions to communicate with the disk controller to request data be read or written to the disk.

**External Interrupt** occurs when any Input and Output Device request for any Operation and the CPU will 
Execute that instructions first

For Example When a Program is executed and when we move the Mouse on the Screen then the CPU will handle this 
External interrupt first and after that he will resume with his Operation.

## 3.14 What is the difference between a mode switch and a process switch?
**Process switch:** It switch the process state between the status like read, blocked ,suspend.
 A process switch is what it is called when the processor switches from one thread/process to another.This causes the contents of the cpu registers and instruction pointer to be saved. The registers and instruction pointer for the new task will then be loaded into the processor and execution of the new process will start/resume. The old program is no longer executing, but it's state is saved in memory for when the kernel decides that it is ready to execute it again. This is what gives the illusion of multitasking, while in reality, only a single process can  run at a time on a cpu. A context switch can occur by hardware or software. A hardware interrupt can occur from a device such as the keyboard,mouse,or system timer, causing code to begin executing the interrupt code.
 
 **Mode switch:**It switch the process privilege between the mode like use mode, kernel mode.
 Generally a mode switch is considered less expensive compared to a process switch.
A mode switch is what is referred to when the cpu changes privilege levels. The kernel works at a higher privilege than a standard user task. In order for the user task to access things controlled by the kernel, it is necessary fro a mode switch to occur. The currently executing process does NOT change during a mode switch. The processor uses these modes to protect the OS from misbehaving or malicious programs, as well as controlling concurrent access to ram, io devices,etc. A mode switch must occur for a software context switch to occur. Only the Kernel can cause a context switch. 



