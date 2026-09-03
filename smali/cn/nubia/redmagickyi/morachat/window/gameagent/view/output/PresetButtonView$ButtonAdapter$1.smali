.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;
.super Ljava/lang/Object;
.source "PresetButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$ButtonHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;

.field final synthetic val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V
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

    .line 213
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;->val$position:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;->val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 217
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;->val$position:I

    if-nez p1, :cond_0

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;->onAccompanyClicked()V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;->access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;->val$position:I

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$ButtonAdapter$1;->val$entry:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;

    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$OnItemClickedListener;->onItemClicked(ILcn/nubia/redmagickyi/morachat/window/gameagent/view/output/PresetButtonView$Entry;)V

    :cond_1
    :goto_0
    return-void
.end method
