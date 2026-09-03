.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$2;
.super Ljava/lang/Object;
.source "MenuAiFunctionsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;->bindView(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

.field final synthetic val$onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;)V
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

    .line 69
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$2;->val$onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$2;->val$onItemClickedListener:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;

    if-eqz p0, :cond_0

    .line 73
    invoke-interface {p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/MenuAiFunctionsView$OnItemClickedListener;->onItemTouched(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
