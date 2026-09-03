.class Lcn/nubia/redmagickyi/util/WebViewAgent$3;
.super Ljava/lang/Object;
.source "WebViewAgent.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/WebViewAgent;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/WebViewAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/WebViewAgent$3;->this$0:Lcn/nubia/redmagickyi/util/WebViewAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
