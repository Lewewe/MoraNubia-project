.class Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$2;
.super Ljava/lang/Object;
.source "RedmagicBroadcastSceneAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 144
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$2;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$2;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    iput p3, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$2;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastSceneBeans;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$2;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$2;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$2;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;

    iget-object v1, v1, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter;->list:Ljava/util/List;

    iget p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$2;->val$position:I

    invoke-interface {v0, p1, v1, p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastSceneAdapter$BroadcastSceneClickInterface;->onBroadcastSceneCheckedChanged(Landroid/view/View;Ljava/util/List;IZ)V

    :cond_0
    return-void
.end method
