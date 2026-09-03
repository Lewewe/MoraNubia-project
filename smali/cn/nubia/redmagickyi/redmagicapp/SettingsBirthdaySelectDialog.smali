.class public Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "SettingsBirthdaySelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog$OnDismissListener;
    }
.end annotation


# instance fields
.field private birthSql:Ljava/lang/String;

.field private btnCancel:Landroid/widget/Button;

.field private btnConfirm:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field datePickerView:Lcn/nubia/redmagickyi/guide/DatePickerView;

.field day:I

.field private imgClose:Landroid/widget/ImageView;

.field private initDay:I

.field private initMonth:I

.field private initYear:I

.field mooth:I

.field private onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog$OnDismissListener;

.field private redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

.field private tvBirthday:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field year:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog$OnDismissListener;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->birthSql:Ljava/lang/String;

    const/16 v0, 0x7d0

    .line 32
    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initYear:I

    const/4 v0, 0x6

    .line 33
    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initMonth:I

    const/16 v0, 0xf

    .line 34
    iput v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initDay:I

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog$OnDismissListener;

    return-void
.end method


# virtual methods
.method public OnSelectedChanged([I[I)V
    .locals 0

    const/4 p1, 0x0

    .line 141
    aget p1, p2, p1

    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->year:I

    const/4 p1, 0x1

    .line 142
    aget p1, p2, p1

    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->mooth:I

    const/4 p1, 0x2

    .line 143
    aget p1, p2, p1

    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->day:I

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 130
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog$OnDismissListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->birthSql:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog$OnDismissListener;->onDismiss(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 43
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_settings_birthday_select_layout:I

    return p0
.end method

.method public getDateBySqlSetting(ILjava/lang/String;)I
    .locals 0

    .line 90
    :try_start_0
    const-string p0, "-"

    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 91
    array-length p2, p0

    if-lez p2, :cond_0

    array-length p2, p0

    if-lt p2, p1, :cond_0

    .line 92
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 5

    const/16 p1, 0x7d0

    .line 48
    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initYear:I

    const/4 p1, 0x6

    .line 49
    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initMonth:I

    const/16 p1, 0xf

    .line 50
    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initDay:I

    .line 51
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->tvTitle:Landroid/widget/TextView;

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->tvTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 54
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->imgClose:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->btnCancel:Landroid/widget/Button;

    .line 57
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->btnCancel:Landroid/widget/Button;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 62
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_agree:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->btnConfirm:Landroid/widget/Button;

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 66
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->btnConfirm:Landroid/widget/Button;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 68
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 69
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->datepicker:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/guide/DatePickerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->datePickerView:Lcn/nubia/redmagickyi/guide/DatePickerView;

    .line 72
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    .line 73
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getUser_birthday()Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 76
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->datePickerView:Lcn/nubia/redmagickyi/guide/DatePickerView;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initYear:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result v2

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initMonth:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result v0

    :goto_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    iget p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initDay:I

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->getDateBySqlSetting(ILjava/lang/String;)I

    move-result p1

    :goto_2
    invoke-virtual {v1, v2, v0, p1}, Lcn/nubia/redmagickyi/guide/DatePickerView;->setDate(III)V

    goto :goto_3

    .line 78
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->datePickerView:Lcn/nubia/redmagickyi/guide/DatePickerView;

    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initYear:I

    iget v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initMonth:I

    iget v2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initDay:I

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/redmagickyi/guide/DatePickerView;->setDate(III)V

    .line 80
    :goto_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->datePickerView:Lcn/nubia/redmagickyi/guide/DatePickerView;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/guide/DatePickerView;->addOnSelectedChangingListener(Lcn/nubia/redmagickyi/guide/DatePickerView$OnSelectedChangedListener;)V

    .line 82
    iget p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initYear:I

    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->year:I

    .line 83
    iget p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initMonth:I

    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->mooth:I

    .line 84
    iget p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->initDay:I

    iput p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->day:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 103
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-ne p1, v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->dismiss()V

    goto :goto_0

    .line 105
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->dismiss()V

    goto :goto_0

    .line 107
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_agree:I

    if-ne p1, v0, :cond_2

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->year:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->mooth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->day:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->birthSql:Ljava/lang/String;

    .line 109
    const-string v0, "user_birthday"

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "has_set_not_first"

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 124
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
