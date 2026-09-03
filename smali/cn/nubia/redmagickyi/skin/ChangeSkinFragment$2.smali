.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$2;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$2;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 221
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$2;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$102(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Z)Z

    .line 222
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$2;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_PORT:[Ljava/lang/String;

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_LAND:[Ljava/lang/String;

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initChangeFocus(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$2;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 224
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$2;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;->IsClearModel(Z)V

    .line 226
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$2;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initClearModelView()V

    return-void
.end method
