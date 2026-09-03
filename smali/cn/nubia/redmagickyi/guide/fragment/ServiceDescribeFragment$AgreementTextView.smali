.class public Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$AgreementTextView;
.super Landroid/text/style/ClickableSpan;
.source "ServiceDescribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AgreementTextView"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isMyOs:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$AgreementTextView;->this$0:Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 167
    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$AgreementTextView;->context:Landroid/content/Context;

    .line 168
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$AgreementTextView;->isMyOs:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$AgreementTextView;->this$0:Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;

    sget-object p1, Lcn/nubia/redmagickyi/network/NetConfig;->AGREEMENT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->loadUrlByWebView(Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 174
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$AgreementTextView;->this$0:Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/guide/fragment/ServiceDescribeFragment$AgreementTextView;->isMyOs:Z

    if-eqz p0, :cond_0

    sget p0, Lcn/nubia/redmagickyi/main/R$color;->color_purple_100:I

    goto :goto_0

    :cond_0
    sget p0, Lcn/nubia/redmagickyi/main/R$color;->color_red_100:I

    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 p0, 0x1

    .line 175
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
