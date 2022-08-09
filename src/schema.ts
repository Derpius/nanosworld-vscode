export enum Authority {
	Server = "server",
	Client = "client",
	Authority = "authority",
	Both = "both"
}

export interface DocDescriptive {
	description?: string,
	description_long?: string
}

export interface DocParameter extends DocDescriptive {
	type: string,
	name: string,
	default?: string
}

export interface DocReturn extends DocDescriptive {
	type: string
}

export interface DocFunction extends DocDescriptive {
	name: string,
	authority: Authority,
	parameters?: DocParameter[],
	return?: DocReturn
}

export interface DocEvent extends DocDescriptive {
	name: string,
	arguments: DocParameter[]
}

export interface DocClass extends DocDescriptive {
	name: string,
	authority: Authority,
	inheritance?: string[],
	constructor?: DocParameter[],
	functions?: DocFunction[],
	static_functions?: DocFunction[],
	events?: DocEvent[],
	staticClass: boolean
}

export interface DocEnumValue {
	key: string,
	value: string
}
export interface Docs {
	classes: {[key: string]: DocClass},
	enums: {[key: string]: DocEnumValue[]}
}
