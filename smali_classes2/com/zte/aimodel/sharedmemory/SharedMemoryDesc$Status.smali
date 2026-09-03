.class public interface abstract annotation Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Status;
.super Ljava/lang/Object;
.source "SharedMemoryDesc.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Status"
.end annotation


# static fields
.field public static final STATUS_BAD_VALUE:I = 0x2

.field public static final STATUS_INVALID_OPERATION:I = 0x3

.field public static final STATUS_NOT_ENOUGH_DATA:I = 0x4

.field public static final STATUS_OK:I = 0x1
