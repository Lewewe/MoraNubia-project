.class Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$1;
.super Ljava/lang/Object;
.source "RedmagicBroadcastSceneAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastSceneViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;I)V
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

    .line 135
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$1;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$1;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$1;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$1;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    iget-object v1, v1, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    iget p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1, p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;->onBroadcastSceneCheckboxTouch(Landroid/view/View;Ljava/util/List;ILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
