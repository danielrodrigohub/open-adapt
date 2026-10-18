.class public final synthetic Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "AdaptMarshaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lba/f;->values()[Lba/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lba/f;->n:Lba/f;

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lba/f;->o:Lba/f;

    const/16 v1, 0x9

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
