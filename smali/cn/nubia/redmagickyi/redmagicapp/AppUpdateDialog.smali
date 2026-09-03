.class public Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "AppUpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;
    }
.end annotation


# instance fields
.field private appUpgradeManager:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

.field private btnCancel:Landroid/widget/Button;

.field private btnUpdate:Landroid/widget/Button;

.field private isUpdateClicked:Z

.field private onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;

.field private tvDetail:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;

    if-eqz v0, :cond_0

    .line 127
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->isUpdateClicked:Z

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->appUpgradeManager:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    invoke-interface {v0, v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog$OnDismissListener;->onDismiss(ZLcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 38
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_request_bglocation_permission:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 2

    .line 43
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->tvTitle:Landroid/widget/TextView;

    .line 44
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->app_version_update_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 45
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->tvTitle:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->tvTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 47
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->tvDetail:Landroid/widget/TextView;

    .line 48
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->btnCancel:Landroid/widget/Button;

    .line 51
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 53
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->btnUpdate:Landroid/widget/Button;

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 57
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isWifiConnected(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->btnUpdate:Landroid/widget/Button;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->resource_update_dialog_btn_update_default:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->btnUpdate:Landroid/widget/Button;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->resource_update_dialog_btn_update_default:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->btnUpdate:Landroid/widget/Button;

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->resource_update_dialog_btn_update_not_wifi:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 72
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-eq p1, v0, :cond_3

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    if-ne p1, v0, :cond_4

    .line 75
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->net_work_bad:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    goto :goto_2

    .line 78
    :cond_2
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->isUpdateClicked:Z

    .line 79
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->dismiss()V

    goto :goto_2

    .line 73
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->dismiss()V

    :cond_4
    :goto_2
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->isUpdateClicked:Z

    .line 120
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method

.method public show(Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;)V
    .locals 10

    if-eqz p1, :cond_4

    .line 91
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->appUpgradeManager:Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;

    .line 92
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->getVersionData()Lcn/nubia/upgrade/model/VersionData;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/manager/AppUpgradeManager;->getDownloadTask()Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/download/DownLoadTask;->getPreDownloadSize()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->app_version_update_dialog_detail_downloaded:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_0
    long-to-double v2, v0

    const-wide v4, 0x40c47ae147ae147bL    # 10485.76

    cmpg-double p1, v2, v4

    .line 98
    const-string v4, "M"

    const-string v5, "%.2f"

    if-gez p1, :cond_1

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-wide/32 v6, 0x6400000

    cmp-long p1, v0, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    if-gez p1, :cond_2

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-double/2addr v2, v6

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-wide/32 v8, 0x40000000

    cmp-long p1, v0, v8

    if-gez p1, :cond_3

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 109
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-double/2addr v2, v6

    div-double/2addr v2, v6

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "G"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->resource_update_dialog_detail:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/AppUpdateDialog;->show()V

    :cond_4
    return-void
.end method
