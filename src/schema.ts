export enum Authority {
	Server = "server",
	Client = "client",
	Authority = "authority",
	Both = "both",
}

export interface DocDescriptive {
	description?: string;
	description_long?: string;
}

export interface DocAuthority {
	authority: Authority;
}

export interface DocTyped {
	type: string;
	default?: string;
	table_properties?: { name: string; type: string }[];
}

export interface DocParameter extends DocDescriptive, DocTyped {
	name: string;
}

export interface DocProperty extends DocDescriptive, DocTyped {
	name: string;
}

export interface DocReturn extends DocDescriptive, DocTyped {}

export interface DocFunction extends DocDescriptive, DocAuthority {
	name: string;
	parameters?: DocParameter[];
	return?: DocReturn[];
}

export interface DocEvent extends DocDescriptive {
	name: string;
	arguments?: DocParameter[];
	return?: DocReturn[];
}

export interface DocOperator {
	name: string;
	operator: string;
	lhs: string;
	rhs: string;
	return: string;
}

export interface DocConstructor extends DocDescriptive {
	parameters: DocParameter[];
}

export interface DocClass extends DocDescriptive, DocAuthority {
	name: string;
	inheritance?: string[];
	constructors?: DocConstructor[];
	functions?: DocFunction[];
	static_functions?: DocFunction[];
	events?: DocEvent[];
	properties?: DocProperty[];
	operators?: DocOperator[];
	staticClass: boolean;
}

export interface DocEnumValue {
	key: string;
	value: string;
}

export interface DocEnum extends DocDescriptive {
	enums: DocEnumValue[];
}

export interface Docs {
	classes: { [key: string]: DocClass };
	enums: { [key: string]: DocEnum };
}
