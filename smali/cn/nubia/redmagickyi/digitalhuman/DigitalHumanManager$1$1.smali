.class Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1$1;
.super Ljava/lang/Object;
.source "DigitalHumanManager.java"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/UnaryOperator<",
        "Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1;Landroid/os/IBinder;)V
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

    .line 74
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1;

    iput-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1$1;->val$service:Landroid/os/IBinder;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 74
    check-cast p1, Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanManager$1$1;->apply(Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;)Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanService;

    move-result-object p0

    return-object p0
.end method
