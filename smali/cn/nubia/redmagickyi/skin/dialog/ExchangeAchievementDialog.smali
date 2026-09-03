.class public Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "ExchangeAchievementDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog$OnOperateListener;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnUpdate:Landroid/widget/Button;

.field private etCode:Landroid/widget/EditText;

.field private ivClose:Landroid/widget/ImageView;

.field private onOperateListener:Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog$OnOperateListener;

.field private tvMessage:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog$OnOperateListener;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->onOperateListener:Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog$OnOperateListener;

    return-void
.end method

.method private onPrepare()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->ivClose:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->etCode:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->tvMessage:Landroid/widget/TextView;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->change_skin_dialog_btn_exchange_achievement_fail:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->btnUpdate:Landroid/widget/Button;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->change_skin_dialog_btn_exchange_achievement:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/BaseDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getContentView()I
    .locals 0

    .line 32
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->dialog_change_skin_exchange:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 2

    .line 37
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->ivClose:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->et_code:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->etCode:Landroid/widget/EditText;

    .line 40
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->tvTitle:Landroid/widget/TextView;

    .line 41
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->tv_message:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->tvMessage:Landroid/widget/TextView;

    .line 42
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->btnCancel:Landroid/widget/Button;

    .line 43
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->btnCancel:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 45
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->btnUpdate:Landroid/widget/Button;

    .line 47
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 49
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->onPrepare()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 66
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->img_close_icon:I

    if-eq p1, v0, :cond_1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_update:I

    if-ne p1, v0, :cond_2

    .line 69
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->onOperateListener:Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog$OnOperateListener;

    invoke-interface {p1}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog$OnOperateListener;->onWatchAchievementClick()V

    .line 70
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->dismiss()V

    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/dialog/ExchangeAchievementDialog;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method

.method public show()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->show()V

    return-void
.end method
