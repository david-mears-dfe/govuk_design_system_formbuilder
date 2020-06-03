module Examples
  module Localisation
    def favourite_kind_of_hat_locale
      <<~LOCALE
        helpers:
          label:
            person:
              favourite_kind_of_hat: Which style of hat do you prefer?
          caption:
            person:
              favourite_kind_of_hat: Fashion choices
          hint:
            person:
              favourite_kind_of_hat: |-
                Trilby, Stetson, Deerstalker, Fez, Top and Beret are
                the most-fashionable
      LOCALE
    end

    def favourite_kind_of_hat
      <<~SNIPPET
        = f.govuk_text_field :favourite_kind_of_hat, label: { size: 'l' }
      SNIPPET
    end

    def contact_type
      <<~SNIPPET
        = f.govuk_collection_radio_buttons :contact_type,
          contact_types, :value, nil
      SNIPPET
    end

    def contact_type_locale
      <<~LOCALE
        helpers:
          legend:
            person:
              contact_type: What is your preferred method of contact?
          hint:
            person:
              contact_type_html: |-
                We recommend <strong>email</strong> at the moment
              contact_type_options:
                letter: Please be aware that this can delay your application
          label:
            person:
              contact_type_options:
                email: Email
                phone: Mobile or landline phone
                letter: Postal letter
      LOCALE
    end

    def department_check_boxes
      <<~SNIPPET
        = f.govuk_collection_check_boxes :department_ids,
          departments_collection, :id, :id
      SNIPPET
    end

    def department_check_boxes_locale
      <<~LOCALE
        helpers:
          legend:
            person:
              department_ids: Which department do you work in?
          hint:
            person:
              department_ids: Select all that apply
          label:
            person:
              department_ids_options:
                sales: Sales
                marketing: Marketing
                finance: Finance
                digital: Digital and Technology
      LOCALE
    end

    def role_name
      <<~SNIPPET
        = f.govuk_text_field :role, label: { size: 'm' }
      SNIPPET
    end

    def custom_locale
      <<~LOCALE
        helpers:
          label:
            person:
              role: What role do you play?

        copy:
          descriptions:
            hint:
              subdivision:
                person:
                  role: |-
                    Roles may be achieved or ascribed or they can be accidental
                    in different situations. An achieved role is a position
                    that a person assumes voluntarily which reflects personal
                    skills, abilities, and effort.
      LOCALE
    end

    def reset_config
      GOVUKDesignSystemFormBuilder.reset!
    end
  end
end
