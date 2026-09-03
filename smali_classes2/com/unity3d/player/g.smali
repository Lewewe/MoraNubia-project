.class final Lcom/unity3d/player/g;
.super Ljava/lang/Object;
.source "g.java"


# static fields
.field protected static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static Log(ILjava/lang/String;)V
    .locals 2

    .line 14
    sget-boolean v0, Lcom/unity3d/player/g;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x6

    .line 15
    const-string v1, "Unity"

    if-ne p0, v0, :cond_0

    .line 16
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 20
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
