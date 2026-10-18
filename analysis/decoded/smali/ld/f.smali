.class public final Lld/f;
.super Ljava/lang/Object;
.source "DebugMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lld/f$a;
    }
.end annotation


# static fields
.field public static final a:Lld/f$a;

.field public static b:Lld/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lld/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lld/f$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Lld/f;->a:Lld/f$a;

    return-void
.end method
