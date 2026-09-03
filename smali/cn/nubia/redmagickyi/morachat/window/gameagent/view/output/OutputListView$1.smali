.class Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$1;
.super Ljava/lang/Object;
.source "OutputListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;->bindView(Landroid/content/Context;Landroid/view/View;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

.field final synthetic val$onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;)V
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

    .line 45
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$1;->val$onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$1;->val$onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;

    if-eqz p0, :cond_0

    .line 49
    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$OnItemClickedListener;->onCanceled()V

    :cond_0
    return-void
.end method
