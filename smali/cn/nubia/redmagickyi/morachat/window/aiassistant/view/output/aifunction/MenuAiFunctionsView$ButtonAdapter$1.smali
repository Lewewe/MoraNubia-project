.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$1;
.super Ljava/lang/Object;
.source "MenuAiFunctionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$ButtonHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;

.field final synthetic val$entry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;ILcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;)V
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

    .line 231
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$1;->val$position:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$1;->val$entry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 234
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->access$600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$1;->this$1:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->access$600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$1;->val$position:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$ButtonAdapter$1;->val$entry:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;->onItemClicked(ILcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;)V

    :cond_0
    return-void
.end method
