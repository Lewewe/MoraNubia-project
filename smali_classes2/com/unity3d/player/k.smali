.class public final Lcom/unity3d/player/k;
.super Ljava/lang/Object;
.source "k.java"


# static fields
.field static final a:Z

.field static final b:Z

.field static final c:Z

.field static final d:Lcom/unity3d/player/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/unity3d/player/k;->a:Z

    .line 18
    sput-boolean v0, Lcom/unity3d/player/k;->b:Z

    .line 19
    sput-boolean v0, Lcom/unity3d/player/k;->c:Z

    .line 20
    new-instance v0, Lcom/unity3d/player/h;

    invoke-direct {v0}, Lcom/unity3d/player/h;-><init>()V

    sput-object v0, Lcom/unity3d/player/k;->d:Lcom/unity3d/player/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
