export enum Authority {
	Server = "server",
	Client = "client",
	Authority = "authority",
	Both = "both"
}

export interface DocParameter {
	type: string,
	name: string,
	description?: string,
	default?: string
}

export interface DocReturn {
	type: string,
	description: string
}

export interface DocFunction {
	name: string,
	authority: string,
	description: string,
	parameters?: DocParameter[],
	return: DocReturn
}

export interface DocEvent {
	name: string,
	description: string,
	arguments: DocParameter[]
}

export interface DocClass {
	name: string,
	description: string,
	authority: Authority,
	inheritance?: string[],
	constructor?: DocParameter[],
	functions?: DocFunction[],
	static_functions?: DocFunction[],
	events?: DocEvent[]
}
