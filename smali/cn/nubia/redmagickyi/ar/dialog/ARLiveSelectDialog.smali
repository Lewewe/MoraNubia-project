.class public Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "ARLiveSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnDismissListener;,
        Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnMobileListener;,
        Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnComputerListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "ARLiveSelectDialog"


# instance fields
.field private close:Landroid/widget/ImageView;

.field private computer:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private mobile:Landroid/widget/TextView;

.field private onComputerListener:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnComputerListener;

.field private onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnDismissListener;

.field private onMobileListener:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnMobileListener;

.field private setting:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnDismissListener;Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnMobileListener;Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnComputerListener;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnDismissListener;

    .line 45
    iput-object p3, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->onMobileListener:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnMobileListener;

    .line 46
    iput-object p4, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->onComputerListener:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnComputerListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->dismiss()V

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnDismissListener;

    if-eqz p0, :cond_0

    .line 101
    invoke-interface {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public getContentView()I
    .locals 0

    .line 94
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->ar_live_select_dialog_view:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 1

    .line 112
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->mobile_live:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->mobile:Landroid/widget/TextView;

    .line 113
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->mobile:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->pc_live:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->computer:Landroid/widget/TextView;

    .line 116
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 117
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->computer:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->close:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->close:Landroid/widget/ImageView;

    .line 119
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->seting_tools:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->setting:Landroid/widget/ImageView;

    .line 121
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 68
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->mobile_live:I

    if-ne p1, v0, :cond_0

    .line 69
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->onMobileListener:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnMobileListener;

    if-eqz p1, :cond_3

    .line 70
    invoke-interface {p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnMobileListener;->onMobile()V

    .line 71
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->dismiss()V

    goto :goto_0

    .line 73
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->pc_live:I

    if-ne p1, v0, :cond_1

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->onComputerListener:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnComputerListener;

    if-eqz p1, :cond_3

    .line 75
    invoke-interface {p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnComputerListener;->onComPuter()V

    .line 76
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->dismiss()V

    goto :goto_0

    .line 78
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->close:I

    if-ne p1, v0, :cond_2

    .line 79
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->onDismissListener:Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnDismissListener;

    if-eqz p1, :cond_3

    .line 80
    invoke-interface {p1}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnDismissListener;->onDismiss()V

    .line 81
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->dismiss()V

    goto :goto_0

    .line 83
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->seting_tools:I

    if-ne p1, v0, :cond_3

    .line 84
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->context:Landroid/content/Context;

    const-class v1, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x18000000

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->dismiss()V

    .line 88
    sget-object p0, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->TAG:Ljava/lang/String;

    const-string p1, "onClickMainNenuItem:  setting"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 52
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 53
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 107
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
