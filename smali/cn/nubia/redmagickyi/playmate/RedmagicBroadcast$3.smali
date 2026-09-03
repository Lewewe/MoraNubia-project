.class Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;
.super Ljava/lang/Object;
.source "RedmagicBroadcast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

.field final synthetic val$finalGameY:I

.field final synthetic val$finalScenePosition:I

.field final synthetic val$finalSceneY:I

.field final synthetic val$sceneBeans:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;IILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    iput p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->val$finalGameY:I

    iput p3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->val$finalSceneY:I

    iput-object p4, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->val$sceneBeans:Ljava/util/List;

    iput p5, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->val$finalScenePosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$000(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->val$finalGameY:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 201
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->access$100(Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->val$finalSceneY:I

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 202
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;

    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->val$sceneBeans:Ljava/util/List;

    iget p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast$3;->val$finalScenePosition:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, p0, v2}, Lcn/nubia/redmagickyi/playmate/RedmagicBroadcast;->onBroadcastSceneClick(Landroid/view/View;Ljava/util/List;IZ)V

    return-void
.end method
