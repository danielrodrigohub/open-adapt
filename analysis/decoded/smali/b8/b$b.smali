.class public final Lb8/b$b;
.super Lld/c;
.source "PermissionsApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb8/b;->a(Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.network.dataopt.permissions.PermissionsApiImpl"
    f = "PermissionsApi.kt"
    l = {
        0x2b
    }
    m = "getPermissions"
.end annotation


# instance fields
.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lb8/b;

.field public j:I


# direct methods
.method public constructor <init>(Lb8/b;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb8/b;",
            "Ljd/d<",
            "-",
            "Lb8/b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lb8/b$b;->i:Lb8/b;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lb8/b$b;->h:Ljava/lang/Object;

    iget p1, p0, Lb8/b$b;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lb8/b$b;->j:I

    iget-object p1, p0, Lb8/b$b;->i:Lb8/b;

    invoke-virtual {p1, p0}, Lb8/b;->a(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
