.class public Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "SettingsCleanCacheDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog$OnDismissListener;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnClean:Landroid/widget/Button;

.field private cbSkinSize:Landroid/widget/CheckBox;

.field private cbVideoSize:Landroid/widget/CheckBox;

.field private imgClose:Landroid/widget/ImageView;

.field private isCleanClicked:Z

.field private layoutVideoSize:Landroid/view/View;

.field private onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog$OnDismissListener;

.field private tvSkinSize:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvVideoSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog$OnDismissListener;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog$OnDismissListener;

    return-void
.end method

.method public static formatFileLength(J)Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    if-gez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double p0, p0

    div-double/2addr p0, v1

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "MB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/math/BigDecimal;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    long-to-double p0, p0

    div-double/2addr p0, v1

    div-double/2addr p0, v1

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.2f"

    invoke-static {v4, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "GB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private updateItemUIState()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->tvVideoSize:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager;->getCacheSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->formatFileLength(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->tvSkinSize:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->formatFileLength(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->cbVideoSize:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->cbSkinSize:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog$OnDismissListener;

    if-eqz v0, :cond_0

    .line 133
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->isCleanClicked:Z

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog$OnDismissListener;->onDismiss(Z)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 39
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_settings_clean_cache_layout:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 2

    .line 44
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->tvTitle:Landroid/widget/TextView;

    .line 45
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->tvTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 47
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_video_size:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->tvVideoSize:Landroid/widget/TextView;

    .line 48
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_skin_size:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->tvSkinSize:Landroid/widget/TextView;

    .line 49
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->layout_video_size:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->layoutVideoSize:Landroid/view/View;

    .line 50
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->cb_video_size:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->cbVideoSize:Landroid/widget/CheckBox;

    .line 52
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->cb_skin_size:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->cbSkinSize:Landroid/widget/CheckBox;

    .line 54
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->imgClose:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_clean:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->btnClean:Landroid/widget/Button;

    .line 58
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->btnClean:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 60
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->btnClean:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->btnCancel:Landroid/widget/Button;

    .line 62
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 64
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->updateItemUIState()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 86
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 87
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->cb_video_size:I

    if-eq p1, p2, :cond_0

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->cb_skin_size:I

    if-ne p1, p2, :cond_3

    .line 88
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->cbVideoSize:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->cbSkinSize:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->btnClean:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->btnClean:Landroid/widget/Button;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_btn_disable:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->btnClean:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->btnClean:Landroid/widget/Button;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$drawable;->app_start_commit_btn_selector:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 71
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-ne p1, v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->dismiss()V

    goto :goto_0

    .line 73
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_clean:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 74
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->isCleanClicked:Z

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager;->clearCache()V

    .line 76
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->dismiss()V

    goto :goto_0

    .line 77
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_2

    .line 78
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->dismiss()V

    goto :goto_0

    .line 79
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_video_size:I

    if-ne p1, v0, :cond_3

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->cbVideoSize:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingsCleanCacheDialog;->isCleanClicked:Z

    .line 126
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
