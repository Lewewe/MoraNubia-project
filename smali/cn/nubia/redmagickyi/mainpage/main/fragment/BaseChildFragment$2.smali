.class Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$2;
.super Ljava/lang/Object;
.source "BaseChildFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$2;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 91
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$2;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$2;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->access$100(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 93
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$2;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_280_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$2;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_346_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$2;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->access$100(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
