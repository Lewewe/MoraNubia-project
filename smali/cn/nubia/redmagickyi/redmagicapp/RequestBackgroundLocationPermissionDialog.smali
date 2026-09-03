.class public Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "RequestBackgroundLocationPermissionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog$OnDismissListener;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnUpdate:Landroid/widget/Button;

.field private isUpdateClicked:Z

.field private onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog$OnDismissListener;

.field private tvContent:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog$OnDismissListener;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p4, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog$OnDismissListener;

    .line 25
    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->initView(ZZ)V

    return-void
.end method

.method private initView(ZZ)V
    .locals 2

    .line 37
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->tvTitle:Landroid/widget/TextView;

    .line 38
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->request_bglocation_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->tvContent:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->request_bglocation_dialog_title_gps:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->request_bglocation_dialog_title_fine_location:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->request_bglocation_dialog_title_all:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :goto_0
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->btnCancel:Landroid/widget/Button;

    .line 50
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->btnCancel:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setSelected(Z)V

    .line 52
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->btnUpdate:Landroid/widget/Button;

    .line 54
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setSelected(Z)V

    .line 56
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->onDismissListener:Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog$OnDismissListener;

    if-eqz v0, :cond_0

    .line 85
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->isUpdateClicked:Z

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog$OnDismissListener;->onDismiss(Z)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 30
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_request_bglocation_permission:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 62
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-eq p1, v0, :cond_1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->isUpdateClicked:Z

    .line 66
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->dismiss()V

    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog;->isUpdateClicked:Z

    .line 78
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
