class ApplicationHelper::Toolbar::AutomationManagerProviderCenter < ApplicationHelper::Toolbar::Basic
  button_group('provider_vmdb', [
    select(
      :provider_vmdb_choice,
      'fa fa-cog fa-lg',
      t = N_('Configuration'),
      t,
      :enabled => true,
      :items   => [
        button(
          :automation_manager_refresh_provider,
          'fa fa-refresh fa-lg',
          N_('Refresh relationships for all items related to this Provider'),
          N_('Refresh Relationships and Power states'),
          :url     => "refresh",
          :confirm => N_("Refresh relationships for all items related to this Provider?")
        ),
        separator,
        button(
          :automation_manager_edit_provider,
          'pficon pficon-edit fa-lg',
          t = N_('Edit this Provider'),
          t,
          :url => "edit"
        ),
        button(
          :automation_manager_delete_provider,
          'pficon pficon-delete fa-lg',
          t = N_('Remove this Provider'),
          t,
          :url     => "delete",
          :confirm => N_("Warning: The selected Provider and ALL of their components will be permanently removed!")
        )
      ]
    ),
  ])
  button_group('automation_manager_policy', [
    select(
      :automation_manager_policy_choice,
      'fa fa-shield fa-lg',
      t = N_('Policy'),
      t,
      :items => [
        button(
          :automation_manager_provider_tag,
          'pficon pficon-edit fa-lg',
          N_('Edit Tags for this Ansible Tower Providers'),
          N_('Edit Tags'))
      ]
    )
  ])
end
