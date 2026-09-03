.class Lcom/google/common/flogger/context/Tags$2;
.super Ljava/lang/Object;
.source "Tags.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/Tags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/common/flogger/context/Tags$KeyValuePair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/common/flogger/context/Tags$KeyValuePair;Lcom/google/common/flogger/context/Tags$KeyValuePair;)I
    .locals 1

    .line 144
    invoke-static {p1}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$200(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$200(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    .line 146
    invoke-static {p1}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 147
    invoke-static {p2}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/common/flogger/context/Tags;->access$400()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {p2}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 141
    check-cast p1, Lcom/google/common/flogger/context/Tags$KeyValuePair;

    check-cast p2, Lcom/google/common/flogger/context/Tags$KeyValuePair;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/context/Tags$2;->compare(Lcom/google/common/flogger/context/Tags$KeyValuePair;Lcom/google/common/flogger/context/Tags$KeyValuePair;)I

    move-result p0

    return p0
.end method
