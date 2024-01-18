module ApplicationHelper
  def flash_class(flash_type_symbol)
    daisy_ui_alert_class = {
      success: "alert-success",
      error: "alert-error",
      notice: "alert-info",
      alert: "alert-danger",
      warn: "alert-warning"
    }
    daisy_ui_alert_class[flash_type_symbol]
  end

  def flash_icon_path(flash_type_symbol)
    daisy_ui_alert_class = {
      success: "flash/success.svg",
      error: "flash/error.svg",
      notice: "flash/info.svg",
      alert: "flash/warning.svg",
      warn: "flash/warning.svg"
    }
    daisy_ui_alert_class[flash_type_symbol]
  end

  def show_svg(path)
    File.open("app/assets/images/#{path}", "rb") do |file|
      raw file.read
    end
  end
end
