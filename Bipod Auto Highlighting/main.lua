Hooks:PostHook(
	PlayerStandard,
	"_update_fwd_ray",
	"BipodAutoHighlighting_PlayerStandard__update_fwd_ray",
	function(self)
		if
			alive(self._equipped_unit) and self:_is_using_bipod() and self._fwd_ray and self._fwd_ray.unit and
				self._equipped_unit:base().check_highlight_unit
		 then
			self._equipped_unit:base():check_highlight_unit(self._fwd_ray.unit)
		end
	end
)
