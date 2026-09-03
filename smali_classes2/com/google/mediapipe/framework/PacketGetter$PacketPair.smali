.class public Lcom/google/mediapipe/framework/PacketGetter$PacketPair;
.super Ljava/lang/Object;
.source "PacketGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/framework/PacketGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PacketPair"
.end annotation


# instance fields
.field final first:Lcom/google/mediapipe/framework/Packet;

.field final second:Lcom/google/mediapipe/framework/Packet;


# direct methods
.method public constructor <init>(Lcom/google/mediapipe/framework/Packet;Lcom/google/mediapipe/framework/Packet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/mediapipe/framework/PacketGetter$PacketPair;->first:Lcom/google/mediapipe/framework/Packet;

    .line 43
    iput-object p2, p0, Lcom/google/mediapipe/framework/PacketGetter$PacketPair;->second:Lcom/google/mediapipe/framework/Packet;

    return-void
.end method
