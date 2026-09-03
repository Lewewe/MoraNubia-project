.class Lcom/unity3d/player/p$a;
.super Ljava/lang/Object;
.source "p.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:[Ljava/lang/Class;

.field public b:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/unity3d/player/p;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/p;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/unity3d/player/p$a;->this$0:Lcom/unity3d/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/unity3d/player/p$a;->a:[Ljava/lang/Class;

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/unity3d/player/p$a;->b:Ljava/lang/reflect/Method;

    return-void
.end method
