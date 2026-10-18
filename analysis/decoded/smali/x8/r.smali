.class public final Lx8/r;
.super Ljava/lang/Object;
.source "DmcHelper.kt"


# static fields
.field public static final a:Lx8/r;

.field public static final b:Lh8/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx8/r;

    invoke-direct {v0}, Lx8/r;-><init>()V

    sput-object v0, Lx8/r;->a:Lx8/r;

    .line 1
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 2
    sput-object v0, Lx8/r;->b:Lh8/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
