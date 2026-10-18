.class public final Ld8/c$b;
.super Ld8/c;
.source "DeleteAccountApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ld8/c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld8/c$b;

    invoke-direct {v0}, Ld8/c$b;-><init>()V

    sput-object v0, Ld8/c$b;->a:Ld8/c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld8/c;-><init>()V

    return-void
.end method
