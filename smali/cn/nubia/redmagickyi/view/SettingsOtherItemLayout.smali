.class public Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;
.super Landroid/widget/LinearLayout;
.source "SettingsOtherItemLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;
    }
.end annotation


# instance fields
.field private tvTiltleSub:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_title_sub:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->tvTiltleSub:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;

    .line 48
    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_title:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->bindTitleView(Landroid/widget/TextView;)V

    return-void
.end method

.method public setContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->tvTiltleSub:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->setContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEnableAutoSize(Z)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout;->tvTiltleSub:Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/SettingsOtherItemLayout$AutoSizeTextView;->setEnableAutoSize(Z)V

    :cond_0
    return-void
.end method
