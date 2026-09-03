.class public Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "SettingsIdentifySelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog$OnDismissListener;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private cbSecret:Landroid/widget/CheckBox;

.field private cbStaff:Landroid/widget/CheckBox;

.field private cbStudent:Landroid/widget/CheckBox;

.field private context:Landroid/content/Context;

.field private imgClose:Landroid/widget/ImageView;

.field private layoutSecret:Landroid/view/View;

.field private layoutStaff:Landroid/view/View;

.field private layoutStudent:Landroid/view/View;

.field private onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog$OnDismissListener;

.field private redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

.field private tvTitle:Landroid/widget/TextView;

.field private user_type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog$OnDismissListener;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog$OnDismissListener;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 142
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 143
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog$OnDismissListener;

    if-eqz p0, :cond_0

    .line 144
    invoke-interface {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 40
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_settings_identify_select_layout:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 2

    .line 45
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->tvTitle:Landroid/widget/TextView;

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->tvTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 48
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->select_student:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->layoutStudent:Landroid/view/View;

    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->cb_select_student:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStudent:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 52
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStudent:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->select_staff:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->layoutStaff:Landroid/view/View;

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->cb_select_staff:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStaff:Landroid/widget/CheckBox;

    .line 56
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 57
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStaff:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->select_secret:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->layoutSecret:Landroid/view/View;

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->cb_select_secret:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbSecret:Landroid/widget/CheckBox;

    .line 61
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 62
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbSecret:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->imgClose:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->btnCancel:Landroid/widget/Button;

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 69
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    .line 72
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getUserType()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->user_type:I

    .line 73
    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    if-ne p1, v1, :cond_0

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbSecret:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 75
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    if-ne p1, v1, :cond_1

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStudent:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 77
    :cond_1
    iget p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->user_type:I

    sget v1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STARFF_MEMBER:I

    if-ne p1, v1, :cond_2

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStaff:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 104
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 105
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_select_secret:I

    const/4 v1, 0x1

    const-string v2, "user_type"

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_2

    .line 107
    sget p1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbSecret:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStaff:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStudent:Landroid/widget/CheckBox;

    invoke-virtual {p0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 112
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_select_staff:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_2

    .line 114
    sget p1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STARFF_MEMBER:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStaff:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbSecret:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStudent:Landroid/widget/CheckBox;

    invoke-virtual {p0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 119
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_select_student:I

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 121
    sget p1, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStudent:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 123
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbSecret:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStaff:Landroid/widget/CheckBox;

    invoke-virtual {p0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 86
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-ne p1, v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->dismiss()V

    goto :goto_2

    .line 88
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->dismiss()V

    goto :goto_2

    .line 90
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->select_student:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_select_student:I

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 93
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->select_staff:I

    if-eq p1, v0, :cond_5

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_select_staff:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 96
    :cond_3
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->select_secret:I

    if-eq p1, v0, :cond_4

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_select_secret:I

    if-ne p1, v0, :cond_7

    .line 97
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbSecret:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->dismiss()V

    goto :goto_2

    .line 94
    :cond_5
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStaff:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->dismiss()V

    goto :goto_2

    .line 91
    :cond_6
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->cbStudent:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsIdentifySelectDialog;->dismiss()V

    :cond_7
    :goto_2
    return-void
.end method

.method public show()V
    .locals 0

    .line 137
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
