.class Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$1;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->parseMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->changeUnitySkin()V

    .line 312
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$102(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;Z)Z

    .line 313
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->access$200(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V

    return-void
.end method
