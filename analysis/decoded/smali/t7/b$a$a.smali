.class public final Lt7/b$a$a;
.super Lrd/o;
.source "GlideImageLoader.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt7/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lt7/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lt7/b$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt7/b$a$a;

    invoke-direct {v0}, Lt7/b$a$a;-><init>()V

    sput-object v0, Lt7/b$a$a;->h:Lt7/b$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lt7/a;

    invoke-direct {v0}, Lt7/a;-><init>()V

    return-object v0
.end method
