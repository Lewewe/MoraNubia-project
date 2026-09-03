.class Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$4;
.super Ljava/lang/Object;
.source "RedmagicBroadcast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onBroadcastGameClick(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$4;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$4;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$100(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 299
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$4;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$100(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    rsub-int/lit8 v0, v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method
