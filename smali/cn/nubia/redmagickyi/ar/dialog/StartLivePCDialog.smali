.class public Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "StartLivePCDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnDismissListener;,
        Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnStartLiveListener;
    }
.end annotation


# instance fields
.field private close:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field private guide:Landroid/widget/TextView;

.field private onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnDismissListener;

.field private onStartLiveListener:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnStartLiveListener;

.field private startLive:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnDismissListener;Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnStartLiveListener;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnDismissListener;

    .line 30
    iput-object p3, p0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->onStartLiveListener:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnStartLiveListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnDismissListener;

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p0}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public getContentView()I
    .locals 0

    .line 63
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->ar_pc_dialog_view:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 1

    .line 68
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->close:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->close:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->guide_text:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->guide:Landroid/widget/TextView;

    .line 71
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->mobile_live:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->startLive:Landroid/widget/TextView;

    .line 72
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->startLive:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 52
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->close:I

    if-ne p1, v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->dismiss()V

    goto :goto_0

    .line 54
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->mobile_live:I

    if-ne p1, v0, :cond_1

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->onStartLiveListener:Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnStartLiveListener;

    if-eqz p0, :cond_1

    .line 56
    invoke-interface {p0}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnStartLiveListener;->onStartLivePC()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 44
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 45
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 46
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 94
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->guide:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->guide:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 100
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->guide:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 101
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->show()V

    return-void
.end method
