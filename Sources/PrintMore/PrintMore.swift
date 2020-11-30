//
//  File.swift
//  
//
//  Created by Ran M. on 11/11/2020.
//

import Foundation

//--------------------------------------------------

public struct PrintMore {

	/*public enum Options {
		case note
		case file
		case function
		case line
		case column

		case all
	}*/

	public enum Option: String {
		case notice = "📔 Notice"
		case info = "🗒 Info"

		case error = "📕 Error"
		case warning = "📙 Warning"
		case success = "📗 Success"
		case action = "📘 Action"
		case canceled = "📓 Cancelled"
	}

	static var pin: String = "📍"
	static var pinT: String = "\t📍"
	static var pinNT: String = "\n\t📍"
	static var pinN: String = "\n📍"

	static var note: String = "📝"
	static var noteT: String = "\t📝"
	static var noteNT: String = "\n\t📝"
	static var noteN: String = "\n📝"
}

/// Writes an easily readable textual representations of the call site
/// (including `#fileID`, `#function`, `#line`, and `#column`)
/// and the given items into the standard output
///
/// You can pass zero or more items to the `printmore(_:_:)`
/// function. The textual representation for each item is the same as that
/// obtained by calling `String(item)`.
///
/// - Parameters:
///   - option: The label.
///   - items: Zero or more items to print.
public func printmore(
	_ option: PrintMore.Option,
	_ items: Any...,
	//separator: String = " ",
	//terminator: String = "\n",
	//_ options: PrintMoreOptions...,

	fileID: String = #fileID,
	function: String = #function,
	line: UInt = #line,
	column: UInt = #column
) {
	let separator: String = " "
	let terminator: String = "\n"

	print(
		"[", option.rawValue, "]",
		PrintMore.pinNT, fileID,
		PrintMore.pinNT, function,
		PrintMore.pinNT, "Line", line, ", column", column, ".",
		separator: separator,
		terminator: terminator
	)
	for item in items {
		print(
			PrintMore.noteT, item,
			separator: separator,
			terminator: terminator
		)
	}
}

//--------------------------------------------------
