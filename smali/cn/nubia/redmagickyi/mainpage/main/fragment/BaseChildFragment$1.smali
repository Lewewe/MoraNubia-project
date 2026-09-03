.class Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$1;
.super Ljava/lang/Object;
.source "BaseChildFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$1;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$1;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->performReload()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$1;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->access$000(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$1;->this$0:Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;->access$000(Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment;)Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/BaseChildFragment$ChildCallback;->reload()V

    :cond_0
    return-void
.end method
