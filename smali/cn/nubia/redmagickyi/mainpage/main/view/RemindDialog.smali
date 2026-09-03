.class public Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "RemindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnUpdate:Landroid/widget/Button;

.field private isUpdateClicked:Z

.field private onDismissListener:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;

.field private tvContent:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->onDismissListener:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;

    return-void
.end method

.method public static formatFileLength(J)Ljava/lang/String;
    .locals 9

    long-to-double v0, p0

    const-wide v2, 0x40c47ae147ae147bL    # 10485.76

    cmpg-double v2, v0, v2

    .line 110
    const-string v3, "M"

    const-string v4, "%.2f"

    if-gez v2, :cond_0

    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p1, Ljava/math/BigDecimal;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const-wide/32 v5, 0x100000

    cmp-long v2, p0, v5

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    if-gez v2, :cond_1

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p1, Ljava/math/BigDecimal;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-double/2addr v0, v5

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000000

    cmp-long v2, p0, v7

    if-gez v2, :cond_2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x400

    div-long/2addr p0, v1

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 121
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p1, Ljava/math/BigDecimal;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-double/2addr v0, v5

    div-double/2addr v0, v5

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "G"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->onDismissListener:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;

    if-eqz v0, :cond_0

    .line 141
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->isUpdateClicked:Z

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;->onDismiss(Z)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 128
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 35
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_request_bglocation_permission:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 2

    .line 40
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->tvTitle:Landroid/widget/TextView;

    .line 41
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->tvContent:Landroid/widget/TextView;

    .line 44
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->btnCancel:Landroid/widget/Button;

    .line 45
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->btnCancel:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 47
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->btnUpdate:Landroid/widget/Button;

    .line 49
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 51
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 99
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-eq p1, v0, :cond_1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->isUpdateClicked:Z

    .line 103
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->dismiss()V

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setCancelText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->btnCancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setCommitText(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->btnUpdate:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->tvContent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setDismissListener(Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->onDismissListener:Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog$OnDismissListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setTitle(I)V
    .locals 1

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->tvTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 71
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->tvTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/RemindDialog;->isUpdateClicked:Z

    .line 134
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
