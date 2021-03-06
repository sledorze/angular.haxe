package angular.internal;

import haxe.macro.Expr;
import haxe.Constraints.Function;

class ModuleMacros {

	macro public function provider (ethis:Expr, f:ExprOf<Function>, ?name:String):Expr
	{
		return angular.internal.ModuleImpl.provider(ethis, f, name);
	}

	macro public function factory (ethis:Expr, f:ExprOf<Function>, ?as:Expr, ?name:String):Expr
	{
		return angular.internal.ModuleImpl.factory(ethis, f, as, name);
	}

	macro public function directive (ethis:Expr, name:String, f:ExprOf<Function>):Expr
	{
		return angular.internal.ModuleImpl.directive(ethis, name, f);
	}

	macro public function filter (ethis:Expr, name:String, f:ExprOf<Function>):Expr
	{
		return angular.internal.ModuleImpl.filter(ethis, name, f);
	}

	macro public function controller (ethis:Expr, name:String, f : ExprOf<Function>):Expr
	{
		return angular.internal.ModuleImpl.controller(ethis, name, f);
	}

	macro public function config (ethis:Expr, f : ExprOf<Function>):Expr
	{
		return angular.internal.ModuleImpl.config(ethis, f);
	}

	macro public function run (ethis:Expr, f:ExprOf<Function>):Expr
	{
		return angular.internal.ModuleImpl.run(ethis, f);
	}

}