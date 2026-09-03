.class Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;
.super Ljava/lang/Object;
.source "Logs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/Logs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormattingTuple"
.end annotation


# static fields
.field public static NULL:Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;


# instance fields
.field private argArray:[Ljava/lang/Object;

.field private message:Ljava/lang/String;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 123
    new-instance v0, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->NULL:Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0, v0}, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->message:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->throwable:Ljava/lang/Throwable;

    .line 136
    iput-object p2, p0, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->argArray:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getArgArray()[Ljava/lang/Object;
    .locals 0

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->argArray:[Ljava/lang/Object;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    .line 148
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/Logs$FormattingTuple;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method
