.class public Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "MobileLiveGuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog$OnDismissListener;
    }
.end annotation


# instance fields
.field private close:Landroid/widget/RelativeLayout;

.field private context:Landroid/content/Context;

.field private vCloseLive:Landroid/view/View;

.field private vOpenFaceReg:Landroid/view/View;

.field private vSettingChangeImage:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getContentView()I
    .locals 0

    .line 53
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->ar_mobile_live_guide_dialog:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 0

    .line 58
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->dialog_bg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->close:Landroid/widget/RelativeLayout;

    .line 59
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->close_live:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vCloseLive:Landroid/view/View;

    .line 61
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->open_face_reg:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vOpenFaceReg:Landroid/view/View;

    .line 62
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->setting_change_image:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vSettingChangeImage:Landroid/view/View;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->dialog_bg:I

    if-ne p1, v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 68
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 69
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 71
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, -0x1

    if-gtz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 72
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 75
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 76
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vCloseLive:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 77
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_guide_text_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vCloseLive:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vOpenFaceReg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_guide_text_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vOpenFaceReg:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vSettingChangeImage:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 83
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->live_mobile_guide_text_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vSettingChangeImage:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 86
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vCloseLive:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    .line 87
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 88
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vCloseLive:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vOpenFaceReg:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 91
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vOpenFaceReg:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vSettingChangeImage:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 93
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/dialog/MobileLiveGuideDialog;->vSettingChangeImage:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method

.method public show()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
