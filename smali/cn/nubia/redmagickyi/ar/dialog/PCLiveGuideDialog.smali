.class public Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "PCLiveGuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog$OnDismissListener;
    }
.end annotation


# instance fields
.field private close:Landroid/widget/RelativeLayout;

.field private context:Landroid/content/Context;

.field private onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog$OnDismissListener;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;->onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog$OnDismissListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;->onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog$OnDismissListener;

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0}, Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public getContentView()I
    .locals 0

    .line 68
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->ar_pc_live_guide_dialog:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 0

    .line 73
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->dialog_bg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;->close:Landroid/widget/RelativeLayout;

    .line 74
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->dialog_bg:I

    if-ne p1, v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/PCLiveGuideDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->onWindowAttributeUpdate(Landroid/view/Window;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 43
    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
