.class public final Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final BACK_EDGE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_INDEX_FIELD_NUMBER:I = 0x1


# instance fields
.field private backEdge_:Z

.field private tagIndex_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3393
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;-><init>()V

    .line 3396
    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    .line 3397
    const-class v1, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2864
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->tagIndex_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4000()Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1

    .line 2859
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;Ljava/lang/String;)V
    .locals 0

    .line 2859
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->setTagIndex(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V
    .locals 0

    .line 2859
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->clearTagIndex()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2859
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->setTagIndexBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;Z)V
    .locals 0

    .line 2859
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->setBackEdge(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V
    .locals 0

    .line 2859
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->clearBackEdge()V

    return-void
.end method

.method private clearBackEdge()V
    .locals 1

    const/4 v0, 0x0

    .line 3047
    iput-boolean v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->backEdge_:Z

    return-void
.end method

.method private clearTagIndex()V
    .locals 1

    .line 2965
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->getTagIndex()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->tagIndex_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1

    .line 3402
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;
    .locals 1

    .line 3125
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3128
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3102
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3108
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3066
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3073
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3113
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3120
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3090
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3097
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3053
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3060
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3078
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3085
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;",
            ">;"
        }
    .end annotation

    .line 3408
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBackEdge(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3030
    iput-boolean p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->backEdge_:Z

    return-void
.end method

.method private setTagIndex(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2940
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2942
    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->tagIndex_:Ljava/lang/String;

    return-void
.end method

.method private setTagIndexBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2989
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2990
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->tagIndex_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 3343
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 3386
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p1

    :pswitch_1
    const/4 p0, 0x1

    .line 3380
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 3365
    :pswitch_2
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    .line 3367
    const-class p1, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    monitor-enter p1

    .line 3368
    :try_start_0
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    .line 3370
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3373
    sput-object p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 3375
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 3362
    :pswitch_3
    sget-object p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p0

    .line 3351
    :pswitch_4
    const-string p0, "tagIndex_"

    const-string p1, "backEdge_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 3355
    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0007"

    .line 3358
    sget-object p2, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {p2, p1, p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3348
    :pswitch_5
    new-instance p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;-><init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V

    return-object p0

    .line 3345
    :pswitch_6
    new-instance p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBackEdge()Z
    .locals 0

    .line 3012
    iget-boolean p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->backEdge_:Z

    return p0
.end method

.method public getTagIndex()Ljava/lang/String;
    .locals 0

    .line 2891
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->tagIndex_:Ljava/lang/String;

    return-object p0
.end method

.method public getTagIndexBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    .line 2916
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->tagIndex_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
