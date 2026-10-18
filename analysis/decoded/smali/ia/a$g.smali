.class public final synthetic Lia/a$g;
.super Ljava/lang/Object;
.source "RemoteRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "g"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lw9/u1;->values()[Lw9/u1;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lw9/u1;->j:Lw9/u1;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lia/a$g;->a:[I

    return-void
.end method
