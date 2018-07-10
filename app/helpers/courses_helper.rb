module CoursesHelper
    def name_field(course)
        if course.name.nil?
            select_tag "course[name]",
            options_from_collection_for_select(Course.all, :name, :name)
        else
            hidden_field_tag "course[name]", course.name
        end
    end

    class TrueClass
        def yesno
            "Yes"
        end
    end

    class FalseClass
        def yesno
            "No"
        end
    end
end